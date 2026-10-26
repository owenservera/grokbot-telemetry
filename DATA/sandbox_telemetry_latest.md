# sandbox_telemetry_parse — 2026-10-26 22:03:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=164820 lines=368
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 363 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 363} |
| `chromeGpuPssKb` | {'int': 363} |
| `chromeOtherPssKb` | {'int': 363} |
| `chromeProcesses` | {'int': 363} |
| `chromeProfiles` | {'int': 363} |
| `chromeRendererMaxPssKb` | {'int': 363} |
| `chromeRendererPssKb` | {'int': 363} |
| `chromeRenderers` | {'int': 363} |
| `chromeTabs` | {'int': 363} |
| `chromeTabsProbedProfiles` | {'int': 363} |
| `chromeUtilityPssKb` | {'int': 363} |
| `desktopPssKb` | {'int': 363} |
| `hostPssKb` | {'int': 363} |
| `kind` | {'str': 363} |
| `memAvailableKb` | {'int': 363} |
| `memTotalKb` | {'int': 363} |
| `otherPssKb` | {'int': 363} |
| `processes` | {'int': 363} |
| `pssFallbackProcesses` | {'int': 363} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
