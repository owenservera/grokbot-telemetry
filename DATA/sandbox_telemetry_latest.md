# sandbox_telemetry_parse — 2026-11-10 18:23:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1264855 lines=2803
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2794 |
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
| `chromeBrowserPssKb` | {'int': 2794} |
| `chromeGpuPssKb` | {'int': 2794} |
| `chromeOtherPssKb` | {'int': 2794} |
| `chromeProcesses` | {'int': 2794} |
| `chromeProfiles` | {'int': 2794} |
| `chromeRendererMaxPssKb` | {'int': 2794} |
| `chromeRendererPssKb` | {'int': 2794} |
| `chromeRenderers` | {'int': 2794} |
| `chromeTabs` | {'int': 2794} |
| `chromeTabsProbedProfiles` | {'int': 2794} |
| `chromeUtilityPssKb` | {'int': 2794} |
| `desktopPssKb` | {'int': 2794} |
| `hostPssKb` | {'int': 2794} |
| `kind` | {'str': 2794} |
| `memAvailableKb` | {'int': 2794} |
| `memTotalKb` | {'int': 2794} |
| `otherPssKb` | {'int': 2794} |
| `processes` | {'int': 2794} |
| `pssFallbackProcesses` | {'int': 2794} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
