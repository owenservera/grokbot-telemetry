# sandbox_telemetry_parse — 2026-11-12 12:57:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2136778 lines=4730
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4721 |
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
| `chromeBrowserPssKb` | {'int': 4721} |
| `chromeGpuPssKb` | {'int': 4721} |
| `chromeOtherPssKb` | {'int': 4721} |
| `chromeProcesses` | {'int': 4721} |
| `chromeProfiles` | {'int': 4721} |
| `chromeRendererMaxPssKb` | {'int': 4721} |
| `chromeRendererPssKb` | {'int': 4721} |
| `chromeRenderers` | {'int': 4721} |
| `chromeTabs` | {'int': 4721} |
| `chromeTabsProbedProfiles` | {'int': 4721} |
| `chromeUtilityPssKb` | {'int': 4721} |
| `desktopPssKb` | {'int': 4721} |
| `hostPssKb` | {'int': 4721} |
| `kind` | {'str': 4721} |
| `memAvailableKb` | {'int': 4721} |
| `memTotalKb` | {'int': 4721} |
| `otherPssKb` | {'int': 4721} |
| `processes` | {'int': 4721} |
| `pssFallbackProcesses` | {'int': 4721} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
