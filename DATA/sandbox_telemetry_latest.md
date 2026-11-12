# sandbox_telemetry_parse — 2026-11-12 05:06:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1979798 lines=4383
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4374 |
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
| `chromeBrowserPssKb` | {'int': 4374} |
| `chromeGpuPssKb` | {'int': 4374} |
| `chromeOtherPssKb` | {'int': 4374} |
| `chromeProcesses` | {'int': 4374} |
| `chromeProfiles` | {'int': 4374} |
| `chromeRendererMaxPssKb` | {'int': 4374} |
| `chromeRendererPssKb` | {'int': 4374} |
| `chromeRenderers` | {'int': 4374} |
| `chromeTabs` | {'int': 4374} |
| `chromeTabsProbedProfiles` | {'int': 4374} |
| `chromeUtilityPssKb` | {'int': 4374} |
| `desktopPssKb` | {'int': 4374} |
| `hostPssKb` | {'int': 4374} |
| `kind` | {'str': 4374} |
| `memAvailableKb` | {'int': 4374} |
| `memTotalKb` | {'int': 4374} |
| `otherPssKb` | {'int': 4374} |
| `processes` | {'int': 4374} |
| `pssFallbackProcesses` | {'int': 4374} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
