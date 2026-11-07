# sandbox_telemetry_parse — 2026-11-07 01:20:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=252221 lines=565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 556 |
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
| `chromeBrowserPssKb` | {'int': 556} |
| `chromeGpuPssKb` | {'int': 556} |
| `chromeOtherPssKb` | {'int': 556} |
| `chromeProcesses` | {'int': 556} |
| `chromeProfiles` | {'int': 556} |
| `chromeRendererMaxPssKb` | {'int': 556} |
| `chromeRendererPssKb` | {'int': 556} |
| `chromeRenderers` | {'int': 556} |
| `chromeTabs` | {'int': 556} |
| `chromeTabsProbedProfiles` | {'int': 556} |
| `chromeUtilityPssKb` | {'int': 556} |
| `desktopPssKb` | {'int': 556} |
| `hostPssKb` | {'int': 556} |
| `kind` | {'str': 556} |
| `memAvailableKb` | {'int': 556} |
| `memTotalKb` | {'int': 556} |
| `otherPssKb` | {'int': 556} |
| `processes` | {'int': 556} |
| `pssFallbackProcesses` | {'int': 556} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
