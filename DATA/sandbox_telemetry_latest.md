# sandbox_telemetry_parse — 2026-11-19 06:39:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1156556 lines=2565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2556 |
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
| `chromeBrowserPssKb` | {'int': 2556} |
| `chromeGpuPssKb` | {'int': 2556} |
| `chromeOtherPssKb` | {'int': 2556} |
| `chromeProcesses` | {'int': 2556} |
| `chromeProfiles` | {'int': 2556} |
| `chromeRendererMaxPssKb` | {'int': 2556} |
| `chromeRendererPssKb` | {'int': 2556} |
| `chromeRenderers` | {'int': 2556} |
| `chromeTabs` | {'int': 2556} |
| `chromeTabsProbedProfiles` | {'int': 2556} |
| `chromeUtilityPssKb` | {'int': 2556} |
| `desktopPssKb` | {'int': 2556} |
| `hostPssKb` | {'int': 2556} |
| `kind` | {'str': 2556} |
| `memAvailableKb` | {'int': 2556} |
| `memTotalKb` | {'int': 2556} |
| `otherPssKb` | {'int': 2556} |
| `processes` | {'int': 2556} |
| `pssFallbackProcesses` | {'int': 2556} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
