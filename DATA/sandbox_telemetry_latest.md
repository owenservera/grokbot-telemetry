# sandbox_telemetry_parse — 2026-11-10 00:19:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=902796 lines=2003
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1994 |
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
| `chromeBrowserPssKb` | {'int': 1994} |
| `chromeGpuPssKb` | {'int': 1994} |
| `chromeOtherPssKb` | {'int': 1994} |
| `chromeProcesses` | {'int': 1994} |
| `chromeProfiles` | {'int': 1994} |
| `chromeRendererMaxPssKb` | {'int': 1994} |
| `chromeRendererPssKb` | {'int': 1994} |
| `chromeRenderers` | {'int': 1994} |
| `chromeTabs` | {'int': 1994} |
| `chromeTabsProbedProfiles` | {'int': 1994} |
| `chromeUtilityPssKb` | {'int': 1994} |
| `desktopPssKb` | {'int': 1994} |
| `hostPssKb` | {'int': 1994} |
| `kind` | {'str': 1994} |
| `memAvailableKb` | {'int': 1994} |
| `memTotalKb` | {'int': 1994} |
| `otherPssKb` | {'int': 1994} |
| `processes` | {'int': 1994} |
| `pssFallbackProcesses` | {'int': 1994} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
