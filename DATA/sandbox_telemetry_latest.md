# sandbox_telemetry_parse — 2026-11-12 16:25:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2220580 lines=4915
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4906 |
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
| `chromeBrowserPssKb` | {'int': 4906} |
| `chromeGpuPssKb` | {'int': 4906} |
| `chromeOtherPssKb` | {'int': 4906} |
| `chromeProcesses` | {'int': 4906} |
| `chromeProfiles` | {'int': 4906} |
| `chromeRendererMaxPssKb` | {'int': 4906} |
| `chromeRendererPssKb` | {'int': 4906} |
| `chromeRenderers` | {'int': 4906} |
| `chromeTabs` | {'int': 4906} |
| `chromeTabsProbedProfiles` | {'int': 4906} |
| `chromeUtilityPssKb` | {'int': 4906} |
| `desktopPssKb` | {'int': 4906} |
| `hostPssKb` | {'int': 4906} |
| `kind` | {'str': 4906} |
| `memAvailableKb` | {'int': 4906} |
| `memTotalKb` | {'int': 4906} |
| `otherPssKb` | {'int': 4906} |
| `processes` | {'int': 4906} |
| `pssFallbackProcesses` | {'int': 4906} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
