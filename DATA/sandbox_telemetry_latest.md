# sandbox_telemetry_parse — 2026-11-11 14:37:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1674276 lines=3708
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3699 |
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
| `chromeBrowserPssKb` | {'int': 3699} |
| `chromeGpuPssKb` | {'int': 3699} |
| `chromeOtherPssKb` | {'int': 3699} |
| `chromeProcesses` | {'int': 3699} |
| `chromeProfiles` | {'int': 3699} |
| `chromeRendererMaxPssKb` | {'int': 3699} |
| `chromeRendererPssKb` | {'int': 3699} |
| `chromeRenderers` | {'int': 3699} |
| `chromeTabs` | {'int': 3699} |
| `chromeTabsProbedProfiles` | {'int': 3699} |
| `chromeUtilityPssKb` | {'int': 3699} |
| `desktopPssKb` | {'int': 3699} |
| `hostPssKb` | {'int': 3699} |
| `kind` | {'str': 3699} |
| `memAvailableKb` | {'int': 3699} |
| `memTotalKb` | {'int': 3699} |
| `otherPssKb` | {'int': 3699} |
| `processes` | {'int': 3699} |
| `pssFallbackProcesses` | {'int': 3699} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
