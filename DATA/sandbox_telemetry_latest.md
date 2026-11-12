# sandbox_telemetry_parse — 2026-11-12 07:12:23 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2018681 lines=4469
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4460 |
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
| `chromeBrowserPssKb` | {'int': 4460} |
| `chromeGpuPssKb` | {'int': 4460} |
| `chromeOtherPssKb` | {'int': 4460} |
| `chromeProcesses` | {'int': 4460} |
| `chromeProfiles` | {'int': 4460} |
| `chromeRendererMaxPssKb` | {'int': 4460} |
| `chromeRendererPssKb` | {'int': 4460} |
| `chromeRenderers` | {'int': 4460} |
| `chromeTabs` | {'int': 4460} |
| `chromeTabsProbedProfiles` | {'int': 4460} |
| `chromeUtilityPssKb` | {'int': 4460} |
| `desktopPssKb` | {'int': 4460} |
| `hostPssKb` | {'int': 4460} |
| `kind` | {'str': 4460} |
| `memAvailableKb` | {'int': 4460} |
| `memTotalKb` | {'int': 4460} |
| `otherPssKb` | {'int': 4460} |
| `processes` | {'int': 4460} |
| `pssFallbackProcesses` | {'int': 4460} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
