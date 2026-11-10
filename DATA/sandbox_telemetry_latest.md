# sandbox_telemetry_parse — 2026-11-10 15:54:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1209590 lines=2681
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2672 |
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
| `chromeBrowserPssKb` | {'int': 2672} |
| `chromeGpuPssKb` | {'int': 2672} |
| `chromeOtherPssKb` | {'int': 2672} |
| `chromeProcesses` | {'int': 2672} |
| `chromeProfiles` | {'int': 2672} |
| `chromeRendererMaxPssKb` | {'int': 2672} |
| `chromeRendererPssKb` | {'int': 2672} |
| `chromeRenderers` | {'int': 2672} |
| `chromeTabs` | {'int': 2672} |
| `chromeTabsProbedProfiles` | {'int': 2672} |
| `chromeUtilityPssKb` | {'int': 2672} |
| `desktopPssKb` | {'int': 2672} |
| `hostPssKb` | {'int': 2672} |
| `kind` | {'str': 2672} |
| `memAvailableKb` | {'int': 2672} |
| `memTotalKb` | {'int': 2672} |
| `otherPssKb` | {'int': 2672} |
| `processes` | {'int': 2672} |
| `pssFallbackProcesses` | {'int': 2672} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
