# sandbox_telemetry_parse — 2026-11-25 19:10:08 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2884045 lines=6389
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6374 |
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
| `chromeBrowserPssKb` | {'int': 6374} |
| `chromeGpuPssKb` | {'int': 6374} |
| `chromeOtherPssKb` | {'int': 6374} |
| `chromeProcesses` | {'int': 6374} |
| `chromeProfiles` | {'int': 6374} |
| `chromeRendererMaxPssKb` | {'int': 6374} |
| `chromeRendererPssKb` | {'int': 6374} |
| `chromeRenderers` | {'int': 6374} |
| `chromeTabs` | {'int': 6374} |
| `chromeTabsProbedProfiles` | {'int': 6374} |
| `chromeUtilityPssKb` | {'int': 6374} |
| `desktopPssKb` | {'int': 6374} |
| `hostPssKb` | {'int': 6374} |
| `kind` | {'str': 6374} |
| `memAvailableKb` | {'int': 6374} |
| `memTotalKb` | {'int': 6374} |
| `otherPssKb` | {'int': 6374} |
| `processes` | {'int': 6374} |
| `pssFallbackProcesses` | {'int': 6374} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
