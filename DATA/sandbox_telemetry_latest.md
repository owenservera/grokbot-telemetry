# sandbox_telemetry_parse — 2026-11-06 21:46:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=181677 lines=409
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 400 |
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
| `chromeBrowserPssKb` | {'int': 400} |
| `chromeGpuPssKb` | {'int': 400} |
| `chromeOtherPssKb` | {'int': 400} |
| `chromeProcesses` | {'int': 400} |
| `chromeProfiles` | {'int': 400} |
| `chromeRendererMaxPssKb` | {'int': 400} |
| `chromeRendererPssKb` | {'int': 400} |
| `chromeRenderers` | {'int': 400} |
| `chromeTabs` | {'int': 400} |
| `chromeTabsProbedProfiles` | {'int': 400} |
| `chromeUtilityPssKb` | {'int': 400} |
| `desktopPssKb` | {'int': 400} |
| `hostPssKb` | {'int': 400} |
| `kind` | {'str': 400} |
| `memAvailableKb` | {'int': 400} |
| `memTotalKb` | {'int': 400} |
| `otherPssKb` | {'int': 400} |
| `processes` | {'int': 400} |
| `pssFallbackProcesses` | {'int': 400} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
