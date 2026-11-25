# sandbox_telemetry_parse — 2026-11-25 19:23:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2890374 lines=6403
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6388 |
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
| `chromeBrowserPssKb` | {'int': 6388} |
| `chromeGpuPssKb` | {'int': 6388} |
| `chromeOtherPssKb` | {'int': 6388} |
| `chromeProcesses` | {'int': 6388} |
| `chromeProfiles` | {'int': 6388} |
| `chromeRendererMaxPssKb` | {'int': 6388} |
| `chromeRendererPssKb` | {'int': 6388} |
| `chromeRenderers` | {'int': 6388} |
| `chromeTabs` | {'int': 6388} |
| `chromeTabsProbedProfiles` | {'int': 6388} |
| `chromeUtilityPssKb` | {'int': 6388} |
| `desktopPssKb` | {'int': 6388} |
| `hostPssKb` | {'int': 6388} |
| `kind` | {'str': 6388} |
| `memAvailableKb` | {'int': 6388} |
| `memTotalKb` | {'int': 6388} |
| `otherPssKb` | {'int': 6388} |
| `processes` | {'int': 6388} |
| `pssFallbackProcesses` | {'int': 6388} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
