# sandbox_telemetry_parse — 2026-11-20 10:20:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1673687 lines=3710
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3699 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3699} |
| `chromeGpuPssKb` | {'int': 3699} |
| `chromeOtherPssKb` | {'int': 3699} |
| `chromeProcesses` | {'int': 3699} |
| `chromeProfiles` | {'int': 3699} |
| `chromeRendererMaxPssKb` | {'int': 3699} |
| `chromeRendererPssKb` | {'int': 3699} |
| `chromeRenderers` | {'int': 3699} |
| `chromeTabs` | {'int': 3699} |
| `chromeTabsProbedProfiles` | {'int': 3699} |
| `chromeUtilityPssKb` | {'int': 3699} |
| `desktopPssKb` | {'int': 3699} |
| `hostPssKb` | {'int': 3699} |
| `kind` | {'str': 3699} |
| `memAvailableKb` | {'int': 3699} |
| `memTotalKb` | {'int': 3699} |
| `otherPssKb` | {'int': 3699} |
| `processes` | {'int': 3699} |
| `pssFallbackProcesses` | {'int': 3699} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
