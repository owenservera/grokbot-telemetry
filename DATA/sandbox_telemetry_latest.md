# sandbox_telemetry_parse — 2026-11-25 21:36:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2933342 lines=6498
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6483 |
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
| `chromeBrowserPssKb` | {'int': 6483} |
| `chromeGpuPssKb` | {'int': 6483} |
| `chromeOtherPssKb` | {'int': 6483} |
| `chromeProcesses` | {'int': 6483} |
| `chromeProfiles` | {'int': 6483} |
| `chromeRendererMaxPssKb` | {'int': 6483} |
| `chromeRendererPssKb` | {'int': 6483} |
| `chromeRenderers` | {'int': 6483} |
| `chromeTabs` | {'int': 6483} |
| `chromeTabsProbedProfiles` | {'int': 6483} |
| `chromeUtilityPssKb` | {'int': 6483} |
| `desktopPssKb` | {'int': 6483} |
| `hostPssKb` | {'int': 6483} |
| `kind` | {'str': 6483} |
| `memAvailableKb` | {'int': 6483} |
| `memTotalKb` | {'int': 6483} |
| `otherPssKb` | {'int': 6483} |
| `processes` | {'int': 6483} |
| `pssFallbackProcesses` | {'int': 6483} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
