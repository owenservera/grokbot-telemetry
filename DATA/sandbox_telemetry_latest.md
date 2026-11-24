# sandbox_telemetry_parse — 2026-11-24 05:24:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2148599 lines=4763
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4748 |
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
| `chromeBrowserPssKb` | {'int': 4748} |
| `chromeGpuPssKb` | {'int': 4748} |
| `chromeOtherPssKb` | {'int': 4748} |
| `chromeProcesses` | {'int': 4748} |
| `chromeProfiles` | {'int': 4748} |
| `chromeRendererMaxPssKb` | {'int': 4748} |
| `chromeRendererPssKb` | {'int': 4748} |
| `chromeRenderers` | {'int': 4748} |
| `chromeTabs` | {'int': 4748} |
| `chromeTabsProbedProfiles` | {'int': 4748} |
| `chromeUtilityPssKb` | {'int': 4748} |
| `desktopPssKb` | {'int': 4748} |
| `hostPssKb` | {'int': 4748} |
| `kind` | {'str': 4748} |
| `memAvailableKb` | {'int': 4748} |
| `memTotalKb` | {'int': 4748} |
| `otherPssKb` | {'int': 4748} |
| `processes` | {'int': 4748} |
| `pssFallbackProcesses` | {'int': 4748} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
