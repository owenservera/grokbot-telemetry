# sandbox_telemetry_parse — 2026-11-25 01:48:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2541722 lines=5632
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5617 |
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
| `chromeBrowserPssKb` | {'int': 5617} |
| `chromeGpuPssKb` | {'int': 5617} |
| `chromeOtherPssKb` | {'int': 5617} |
| `chromeProcesses` | {'int': 5617} |
| `chromeProfiles` | {'int': 5617} |
| `chromeRendererMaxPssKb` | {'int': 5617} |
| `chromeRendererPssKb` | {'int': 5617} |
| `chromeRenderers` | {'int': 5617} |
| `chromeTabs` | {'int': 5617} |
| `chromeTabsProbedProfiles` | {'int': 5617} |
| `chromeUtilityPssKb` | {'int': 5617} |
| `desktopPssKb` | {'int': 5617} |
| `hostPssKb` | {'int': 5617} |
| `kind` | {'str': 5617} |
| `memAvailableKb` | {'int': 5617} |
| `memTotalKb` | {'int': 5617} |
| `otherPssKb` | {'int': 5617} |
| `processes` | {'int': 5617} |
| `pssFallbackProcesses` | {'int': 5617} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
