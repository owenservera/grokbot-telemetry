# sandbox_telemetry_parse — 2026-11-12 17:09:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2235529 lines=4948
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4939 |
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
| `chromeBrowserPssKb` | {'int': 4939} |
| `chromeGpuPssKb` | {'int': 4939} |
| `chromeOtherPssKb` | {'int': 4939} |
| `chromeProcesses` | {'int': 4939} |
| `chromeProfiles` | {'int': 4939} |
| `chromeRendererMaxPssKb` | {'int': 4939} |
| `chromeRendererPssKb` | {'int': 4939} |
| `chromeRenderers` | {'int': 4939} |
| `chromeTabs` | {'int': 4939} |
| `chromeTabsProbedProfiles` | {'int': 4939} |
| `chromeUtilityPssKb` | {'int': 4939} |
| `desktopPssKb` | {'int': 4939} |
| `hostPssKb` | {'int': 4939} |
| `kind` | {'str': 4939} |
| `memAvailableKb` | {'int': 4939} |
| `memTotalKb` | {'int': 4939} |
| `otherPssKb` | {'int': 4939} |
| `processes` | {'int': 4939} |
| `pssFallbackProcesses` | {'int': 4939} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
