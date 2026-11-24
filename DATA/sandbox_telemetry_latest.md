# sandbox_telemetry_parse — 2026-11-24 10:01:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2236772 lines=4958
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4943 |
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
| `chromeBrowserPssKb` | {'int': 4943} |
| `chromeGpuPssKb` | {'int': 4943} |
| `chromeOtherPssKb` | {'int': 4943} |
| `chromeProcesses` | {'int': 4943} |
| `chromeProfiles` | {'int': 4943} |
| `chromeRendererMaxPssKb` | {'int': 4943} |
| `chromeRendererPssKb` | {'int': 4943} |
| `chromeRenderers` | {'int': 4943} |
| `chromeTabs` | {'int': 4943} |
| `chromeTabsProbedProfiles` | {'int': 4943} |
| `chromeUtilityPssKb` | {'int': 4943} |
| `desktopPssKb` | {'int': 4943} |
| `hostPssKb` | {'int': 4943} |
| `kind` | {'str': 4943} |
| `memAvailableKb` | {'int': 4943} |
| `memTotalKb` | {'int': 4943} |
| `otherPssKb` | {'int': 4943} |
| `processes` | {'int': 4943} |
| `pssFallbackProcesses` | {'int': 4943} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
