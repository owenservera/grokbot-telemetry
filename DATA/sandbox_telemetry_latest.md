# sandbox_telemetry_parse — 2026-11-12 05:42:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1993364 lines=4413
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4404 |
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
| `chromeBrowserPssKb` | {'int': 4404} |
| `chromeGpuPssKb` | {'int': 4404} |
| `chromeOtherPssKb` | {'int': 4404} |
| `chromeProcesses` | {'int': 4404} |
| `chromeProfiles` | {'int': 4404} |
| `chromeRendererMaxPssKb` | {'int': 4404} |
| `chromeRendererPssKb` | {'int': 4404} |
| `chromeRenderers` | {'int': 4404} |
| `chromeTabs` | {'int': 4404} |
| `chromeTabsProbedProfiles` | {'int': 4404} |
| `chromeUtilityPssKb` | {'int': 4404} |
| `desktopPssKb` | {'int': 4404} |
| `hostPssKb` | {'int': 4404} |
| `kind` | {'str': 4404} |
| `memAvailableKb` | {'int': 4404} |
| `memTotalKb` | {'int': 4404} |
| `otherPssKb` | {'int': 4404} |
| `processes` | {'int': 4404} |
| `pssFallbackProcesses` | {'int': 4404} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
