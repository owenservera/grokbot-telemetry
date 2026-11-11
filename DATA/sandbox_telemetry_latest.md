# sandbox_telemetry_parse — 2026-11-11 11:34:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1609569 lines=3565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3556 |
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
| `chromeBrowserPssKb` | {'int': 3556} |
| `chromeGpuPssKb` | {'int': 3556} |
| `chromeOtherPssKb` | {'int': 3556} |
| `chromeProcesses` | {'int': 3556} |
| `chromeProfiles` | {'int': 3556} |
| `chromeRendererMaxPssKb` | {'int': 3556} |
| `chromeRendererPssKb` | {'int': 3556} |
| `chromeRenderers` | {'int': 3556} |
| `chromeTabs` | {'int': 3556} |
| `chromeTabsProbedProfiles` | {'int': 3556} |
| `chromeUtilityPssKb` | {'int': 3556} |
| `desktopPssKb` | {'int': 3556} |
| `hostPssKb` | {'int': 3556} |
| `kind` | {'str': 3556} |
| `memAvailableKb` | {'int': 3556} |
| `memTotalKb` | {'int': 3556} |
| `otherPssKb` | {'int': 3556} |
| `processes` | {'int': 3556} |
| `pssFallbackProcesses` | {'int': 3556} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
