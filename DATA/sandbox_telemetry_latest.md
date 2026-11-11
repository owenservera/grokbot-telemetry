# sandbox_telemetry_parse — 2026-11-11 20:22:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1801911 lines=3990
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3981 |
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
| `chromeBrowserPssKb` | {'int': 3981} |
| `chromeGpuPssKb` | {'int': 3981} |
| `chromeOtherPssKb` | {'int': 3981} |
| `chromeProcesses` | {'int': 3981} |
| `chromeProfiles` | {'int': 3981} |
| `chromeRendererMaxPssKb` | {'int': 3981} |
| `chromeRendererPssKb` | {'int': 3981} |
| `chromeRenderers` | {'int': 3981} |
| `chromeTabs` | {'int': 3981} |
| `chromeTabsProbedProfiles` | {'int': 3981} |
| `chromeUtilityPssKb` | {'int': 3981} |
| `desktopPssKb` | {'int': 3981} |
| `hostPssKb` | {'int': 3981} |
| `kind` | {'str': 3981} |
| `memAvailableKb` | {'int': 3981} |
| `memTotalKb` | {'int': 3981} |
| `otherPssKb` | {'int': 3981} |
| `processes` | {'int': 3981} |
| `pssFallbackProcesses` | {'int': 3981} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
