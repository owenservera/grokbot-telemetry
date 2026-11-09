# sandbox_telemetry_parse — 2026-11-10 00:14:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=900536 lines=1998
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1989 |
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
| `chromeBrowserPssKb` | {'int': 1989} |
| `chromeGpuPssKb` | {'int': 1989} |
| `chromeOtherPssKb` | {'int': 1989} |
| `chromeProcesses` | {'int': 1989} |
| `chromeProfiles` | {'int': 1989} |
| `chromeRendererMaxPssKb` | {'int': 1989} |
| `chromeRendererPssKb` | {'int': 1989} |
| `chromeRenderers` | {'int': 1989} |
| `chromeTabs` | {'int': 1989} |
| `chromeTabsProbedProfiles` | {'int': 1989} |
| `chromeUtilityPssKb` | {'int': 1989} |
| `desktopPssKb` | {'int': 1989} |
| `hostPssKb` | {'int': 1989} |
| `kind` | {'str': 1989} |
| `memAvailableKb` | {'int': 1989} |
| `memTotalKb` | {'int': 1989} |
| `otherPssKb` | {'int': 1989} |
| `processes` | {'int': 1989} |
| `pssFallbackProcesses` | {'int': 1989} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
