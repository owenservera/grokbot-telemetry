# sandbox_telemetry_parse — 2026-11-24 06:52:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2173913 lines=4819
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4804 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4804} |
| `chromeGpuPssKb` | {'int': 4804} |
| `chromeOtherPssKb` | {'int': 4804} |
| `chromeProcesses` | {'int': 4804} |
| `chromeProfiles` | {'int': 4804} |
| `chromeRendererMaxPssKb` | {'int': 4804} |
| `chromeRendererPssKb` | {'int': 4804} |
| `chromeRenderers` | {'int': 4804} |
| `chromeTabs` | {'int': 4804} |
| `chromeTabsProbedProfiles` | {'int': 4804} |
| `chromeUtilityPssKb` | {'int': 4804} |
| `desktopPssKb` | {'int': 4804} |
| `hostPssKb` | {'int': 4804} |
| `kind` | {'str': 4804} |
| `memAvailableKb` | {'int': 4804} |
| `memTotalKb` | {'int': 4804} |
| `otherPssKb` | {'int': 4804} |
| `processes` | {'int': 4804} |
| `pssFallbackProcesses` | {'int': 4804} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
