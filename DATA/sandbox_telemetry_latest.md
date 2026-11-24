# sandbox_telemetry_parse — 2026-11-24 17:12:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2370689 lines=5254
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5239 |
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
| `chromeBrowserPssKb` | {'int': 5239} |
| `chromeGpuPssKb` | {'int': 5239} |
| `chromeOtherPssKb` | {'int': 5239} |
| `chromeProcesses` | {'int': 5239} |
| `chromeProfiles` | {'int': 5239} |
| `chromeRendererMaxPssKb` | {'int': 5239} |
| `chromeRendererPssKb` | {'int': 5239} |
| `chromeRenderers` | {'int': 5239} |
| `chromeTabs` | {'int': 5239} |
| `chromeTabsProbedProfiles` | {'int': 5239} |
| `chromeUtilityPssKb` | {'int': 5239} |
| `desktopPssKb` | {'int': 5239} |
| `hostPssKb` | {'int': 5239} |
| `kind` | {'str': 5239} |
| `memAvailableKb` | {'int': 5239} |
| `memTotalKb` | {'int': 5239} |
| `otherPssKb` | {'int': 5239} |
| `processes` | {'int': 5239} |
| `pssFallbackProcesses` | {'int': 5239} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
