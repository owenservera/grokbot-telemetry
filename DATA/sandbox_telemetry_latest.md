# sandbox_telemetry_parse — 2026-11-10 17:06:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1232692 lines=2732
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2723 |
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
| `chromeBrowserPssKb` | {'int': 2723} |
| `chromeGpuPssKb` | {'int': 2723} |
| `chromeOtherPssKb` | {'int': 2723} |
| `chromeProcesses` | {'int': 2723} |
| `chromeProfiles` | {'int': 2723} |
| `chromeRendererMaxPssKb` | {'int': 2723} |
| `chromeRendererPssKb` | {'int': 2723} |
| `chromeRenderers` | {'int': 2723} |
| `chromeTabs` | {'int': 2723} |
| `chromeTabsProbedProfiles` | {'int': 2723} |
| `chromeUtilityPssKb` | {'int': 2723} |
| `desktopPssKb` | {'int': 2723} |
| `hostPssKb` | {'int': 2723} |
| `kind` | {'str': 2723} |
| `memAvailableKb` | {'int': 2723} |
| `memTotalKb` | {'int': 2723} |
| `otherPssKb` | {'int': 2723} |
| `processes` | {'int': 2723} |
| `pssFallbackProcesses` | {'int': 2723} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
