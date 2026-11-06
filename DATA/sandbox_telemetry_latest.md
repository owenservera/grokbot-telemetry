# sandbox_telemetry_parse — 2026-11-06 18:11:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=102503 lines=234
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 225 |
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
| `chromeBrowserPssKb` | {'int': 225} |
| `chromeGpuPssKb` | {'int': 225} |
| `chromeOtherPssKb` | {'int': 225} |
| `chromeProcesses` | {'int': 225} |
| `chromeProfiles` | {'int': 225} |
| `chromeRendererMaxPssKb` | {'int': 225} |
| `chromeRendererPssKb` | {'int': 225} |
| `chromeRenderers` | {'int': 225} |
| `chromeTabs` | {'int': 225} |
| `chromeTabsProbedProfiles` | {'int': 225} |
| `chromeUtilityPssKb` | {'int': 225} |
| `desktopPssKb` | {'int': 225} |
| `hostPssKb` | {'int': 225} |
| `kind` | {'str': 225} |
| `memAvailableKb` | {'int': 225} |
| `memTotalKb` | {'int': 225} |
| `otherPssKb` | {'int': 225} |
| `processes` | {'int': 225} |
| `pssFallbackProcesses` | {'int': 225} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
