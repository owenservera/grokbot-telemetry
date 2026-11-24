# sandbox_telemetry_parse — 2026-11-25 00:19:36 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2514145 lines=5571
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5556 |
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
| `chromeBrowserPssKb` | {'int': 5556} |
| `chromeGpuPssKb` | {'int': 5556} |
| `chromeOtherPssKb` | {'int': 5556} |
| `chromeProcesses` | {'int': 5556} |
| `chromeProfiles` | {'int': 5556} |
| `chromeRendererMaxPssKb` | {'int': 5556} |
| `chromeRendererPssKb` | {'int': 5556} |
| `chromeRenderers` | {'int': 5556} |
| `chromeTabs` | {'int': 5556} |
| `chromeTabsProbedProfiles` | {'int': 5556} |
| `chromeUtilityPssKb` | {'int': 5556} |
| `desktopPssKb` | {'int': 5556} |
| `hostPssKb` | {'int': 5556} |
| `kind` | {'str': 5556} |
| `memAvailableKb` | {'int': 5556} |
| `memTotalKb` | {'int': 5556} |
| `otherPssKb` | {'int': 5556} |
| `processes` | {'int': 5556} |
| `pssFallbackProcesses` | {'int': 5556} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
