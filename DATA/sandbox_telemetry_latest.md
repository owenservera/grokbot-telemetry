# sandbox_telemetry_parse — 2026-11-24 08:36:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2208739 lines=4896
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4881 |
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
| `chromeBrowserPssKb` | {'int': 4881} |
| `chromeGpuPssKb` | {'int': 4881} |
| `chromeOtherPssKb` | {'int': 4881} |
| `chromeProcesses` | {'int': 4881} |
| `chromeProfiles` | {'int': 4881} |
| `chromeRendererMaxPssKb` | {'int': 4881} |
| `chromeRendererPssKb` | {'int': 4881} |
| `chromeRenderers` | {'int': 4881} |
| `chromeTabs` | {'int': 4881} |
| `chromeTabsProbedProfiles` | {'int': 4881} |
| `chromeUtilityPssKb` | {'int': 4881} |
| `desktopPssKb` | {'int': 4881} |
| `hostPssKb` | {'int': 4881} |
| `kind` | {'str': 4881} |
| `memAvailableKb` | {'int': 4881} |
| `memTotalKb` | {'int': 4881} |
| `otherPssKb` | {'int': 4881} |
| `processes` | {'int': 4881} |
| `pssFallbackProcesses` | {'int': 4881} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
