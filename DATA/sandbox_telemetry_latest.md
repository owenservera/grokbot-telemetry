# sandbox_telemetry_parse — 2026-11-07 13:32:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=483323 lines=1076
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1067 |
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
| `chromeBrowserPssKb` | {'int': 1067} |
| `chromeGpuPssKb` | {'int': 1067} |
| `chromeOtherPssKb` | {'int': 1067} |
| `chromeProcesses` | {'int': 1067} |
| `chromeProfiles` | {'int': 1067} |
| `chromeRendererMaxPssKb` | {'int': 1067} |
| `chromeRendererPssKb` | {'int': 1067} |
| `chromeRenderers` | {'int': 1067} |
| `chromeTabs` | {'int': 1067} |
| `chromeTabsProbedProfiles` | {'int': 1067} |
| `chromeUtilityPssKb` | {'int': 1067} |
| `desktopPssKb` | {'int': 1067} |
| `hostPssKb` | {'int': 1067} |
| `kind` | {'str': 1067} |
| `memAvailableKb` | {'int': 1067} |
| `memTotalKb` | {'int': 1067} |
| `otherPssKb` | {'int': 1067} |
| `processes` | {'int': 1067} |
| `pssFallbackProcesses` | {'int': 1067} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
