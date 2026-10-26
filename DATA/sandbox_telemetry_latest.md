# sandbox_telemetry_parse — 2026-10-26 18:27:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=71049 lines=161
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 156 |
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
| `chromeBrowserPssKb` | {'int': 156} |
| `chromeGpuPssKb` | {'int': 156} |
| `chromeOtherPssKb` | {'int': 156} |
| `chromeProcesses` | {'int': 156} |
| `chromeProfiles` | {'int': 156} |
| `chromeRendererMaxPssKb` | {'int': 156} |
| `chromeRendererPssKb` | {'int': 156} |
| `chromeRenderers` | {'int': 156} |
| `chromeTabs` | {'int': 156} |
| `chromeTabsProbedProfiles` | {'int': 156} |
| `chromeUtilityPssKb` | {'int': 156} |
| `desktopPssKb` | {'int': 156} |
| `hostPssKb` | {'int': 156} |
| `kind` | {'str': 156} |
| `memAvailableKb` | {'int': 156} |
| `memTotalKb` | {'int': 156} |
| `otherPssKb` | {'int': 156} |
| `processes` | {'int': 156} |
| `pssFallbackProcesses` | {'int': 156} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
