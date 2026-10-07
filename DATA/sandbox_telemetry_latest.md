# sandbox_telemetry_parse — 2026-10-07 10:05:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=953413 lines=2095
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2090 |
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
| `chromeBrowserPssKb` | {'int': 2090} |
| `chromeGpuPssKb` | {'int': 2090} |
| `chromeOtherPssKb` | {'int': 2090} |
| `chromeProcesses` | {'int': 2090} |
| `chromeProfiles` | {'int': 2090} |
| `chromeRendererMaxPssKb` | {'int': 2090} |
| `chromeRendererPssKb` | {'int': 2090} |
| `chromeRenderers` | {'int': 2090} |
| `chromeTabs` | {'int': 2090} |
| `chromeTabsProbedProfiles` | {'int': 2090} |
| `chromeUtilityPssKb` | {'int': 2090} |
| `desktopPssKb` | {'int': 2090} |
| `hostPssKb` | {'int': 2090} |
| `kind` | {'str': 2090} |
| `memAvailableKb` | {'int': 2090} |
| `memTotalKb` | {'int': 2090} |
| `otherPssKb` | {'int': 2090} |
| `processes` | {'int': 2090} |
| `pssFallbackProcesses` | {'int': 2090} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
