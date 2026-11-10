# sandbox_telemetry_parse — 2026-11-10 01:34:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=928568 lines=2060
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2051 |
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
| `chromeBrowserPssKb` | {'int': 2051} |
| `chromeGpuPssKb` | {'int': 2051} |
| `chromeOtherPssKb` | {'int': 2051} |
| `chromeProcesses` | {'int': 2051} |
| `chromeProfiles` | {'int': 2051} |
| `chromeRendererMaxPssKb` | {'int': 2051} |
| `chromeRendererPssKb` | {'int': 2051} |
| `chromeRenderers` | {'int': 2051} |
| `chromeTabs` | {'int': 2051} |
| `chromeTabsProbedProfiles` | {'int': 2051} |
| `chromeUtilityPssKb` | {'int': 2051} |
| `desktopPssKb` | {'int': 2051} |
| `hostPssKb` | {'int': 2051} |
| `kind` | {'str': 2051} |
| `memAvailableKb` | {'int': 2051} |
| `memTotalKb` | {'int': 2051} |
| `otherPssKb` | {'int': 2051} |
| `processes` | {'int': 2051} |
| `pssFallbackProcesses` | {'int': 2051} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
