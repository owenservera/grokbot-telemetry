# sandbox_telemetry_parse — 2026-11-12 07:41:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2029995 lines=4494
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4485 |
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
| `chromeBrowserPssKb` | {'int': 4485} |
| `chromeGpuPssKb` | {'int': 4485} |
| `chromeOtherPssKb` | {'int': 4485} |
| `chromeProcesses` | {'int': 4485} |
| `chromeProfiles` | {'int': 4485} |
| `chromeRendererMaxPssKb` | {'int': 4485} |
| `chromeRendererPssKb` | {'int': 4485} |
| `chromeRenderers` | {'int': 4485} |
| `chromeTabs` | {'int': 4485} |
| `chromeTabsProbedProfiles` | {'int': 4485} |
| `chromeUtilityPssKb` | {'int': 4485} |
| `desktopPssKb` | {'int': 4485} |
| `hostPssKb` | {'int': 4485} |
| `kind` | {'str': 4485} |
| `memAvailableKb` | {'int': 4485} |
| `memTotalKb` | {'int': 4485} |
| `otherPssKb` | {'int': 4485} |
| `processes` | {'int': 4485} |
| `pssFallbackProcesses` | {'int': 4485} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
