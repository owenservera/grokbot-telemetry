# sandbox_telemetry_parse — 2026-11-11 01:51:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1423688 lines=3154
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3145 |
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
| `chromeBrowserPssKb` | {'int': 3145} |
| `chromeGpuPssKb` | {'int': 3145} |
| `chromeOtherPssKb` | {'int': 3145} |
| `chromeProcesses` | {'int': 3145} |
| `chromeProfiles` | {'int': 3145} |
| `chromeRendererMaxPssKb` | {'int': 3145} |
| `chromeRendererPssKb` | {'int': 3145} |
| `chromeRenderers` | {'int': 3145} |
| `chromeTabs` | {'int': 3145} |
| `chromeTabsProbedProfiles` | {'int': 3145} |
| `chromeUtilityPssKb` | {'int': 3145} |
| `desktopPssKb` | {'int': 3145} |
| `hostPssKb` | {'int': 3145} |
| `kind` | {'str': 3145} |
| `memAvailableKb` | {'int': 3145} |
| `memTotalKb` | {'int': 3145} |
| `otherPssKb` | {'int': 3145} |
| `processes` | {'int': 3145} |
| `pssFallbackProcesses` | {'int': 3145} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
