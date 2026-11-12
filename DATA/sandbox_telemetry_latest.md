# sandbox_telemetry_parse — 2026-11-12 17:14:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2237794 lines=4953
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4944 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4944} |
| `chromeGpuPssKb` | {'int': 4944} |
| `chromeOtherPssKb` | {'int': 4944} |
| `chromeProcesses` | {'int': 4944} |
| `chromeProfiles` | {'int': 4944} |
| `chromeRendererMaxPssKb` | {'int': 4944} |
| `chromeRendererPssKb` | {'int': 4944} |
| `chromeRenderers` | {'int': 4944} |
| `chromeTabs` | {'int': 4944} |
| `chromeTabsProbedProfiles` | {'int': 4944} |
| `chromeUtilityPssKb` | {'int': 4944} |
| `desktopPssKb` | {'int': 4944} |
| `hostPssKb` | {'int': 4944} |
| `kind` | {'str': 4944} |
| `memAvailableKb` | {'int': 4944} |
| `memTotalKb` | {'int': 4944} |
| `otherPssKb` | {'int': 4944} |
| `processes` | {'int': 4944} |
| `pssFallbackProcesses` | {'int': 4944} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
