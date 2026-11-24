# sandbox_telemetry_parse — 2026-11-24 03:17:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2105635 lines=4668
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4653 |
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
| `chromeBrowserPssKb` | {'int': 4653} |
| `chromeGpuPssKb` | {'int': 4653} |
| `chromeOtherPssKb` | {'int': 4653} |
| `chromeProcesses` | {'int': 4653} |
| `chromeProfiles` | {'int': 4653} |
| `chromeRendererMaxPssKb` | {'int': 4653} |
| `chromeRendererPssKb` | {'int': 4653} |
| `chromeRenderers` | {'int': 4653} |
| `chromeTabs` | {'int': 4653} |
| `chromeTabsProbedProfiles` | {'int': 4653} |
| `chromeUtilityPssKb` | {'int': 4653} |
| `desktopPssKb` | {'int': 4653} |
| `hostPssKb` | {'int': 4653} |
| `kind` | {'str': 4653} |
| `memAvailableKb` | {'int': 4653} |
| `memTotalKb` | {'int': 4653} |
| `otherPssKb` | {'int': 4653} |
| `processes` | {'int': 4653} |
| `pssFallbackProcesses` | {'int': 4653} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
