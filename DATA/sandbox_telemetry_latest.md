# sandbox_telemetry_parse — 2026-11-12 09:23:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2062123 lines=4565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4556 |
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
| `chromeBrowserPssKb` | {'int': 4556} |
| `chromeGpuPssKb` | {'int': 4556} |
| `chromeOtherPssKb` | {'int': 4556} |
| `chromeProcesses` | {'int': 4556} |
| `chromeProfiles` | {'int': 4556} |
| `chromeRendererMaxPssKb` | {'int': 4556} |
| `chromeRendererPssKb` | {'int': 4556} |
| `chromeRenderers` | {'int': 4556} |
| `chromeTabs` | {'int': 4556} |
| `chromeTabsProbedProfiles` | {'int': 4556} |
| `chromeUtilityPssKb` | {'int': 4556} |
| `desktopPssKb` | {'int': 4556} |
| `hostPssKb` | {'int': 4556} |
| `kind` | {'str': 4556} |
| `memAvailableKb` | {'int': 4556} |
| `memTotalKb` | {'int': 4556} |
| `otherPssKb` | {'int': 4556} |
| `processes` | {'int': 4556} |
| `pssFallbackProcesses` | {'int': 4556} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
