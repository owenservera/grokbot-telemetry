# sandbox_telemetry_parse — 2026-11-10 05:06:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=997342 lines=2212
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2203 |
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
| `chromeBrowserPssKb` | {'int': 2203} |
| `chromeGpuPssKb` | {'int': 2203} |
| `chromeOtherPssKb` | {'int': 2203} |
| `chromeProcesses` | {'int': 2203} |
| `chromeProfiles` | {'int': 2203} |
| `chromeRendererMaxPssKb` | {'int': 2203} |
| `chromeRendererPssKb` | {'int': 2203} |
| `chromeRenderers` | {'int': 2203} |
| `chromeTabs` | {'int': 2203} |
| `chromeTabsProbedProfiles` | {'int': 2203} |
| `chromeUtilityPssKb` | {'int': 2203} |
| `desktopPssKb` | {'int': 2203} |
| `hostPssKb` | {'int': 2203} |
| `kind` | {'str': 2203} |
| `memAvailableKb` | {'int': 2203} |
| `memTotalKb` | {'int': 2203} |
| `otherPssKb` | {'int': 2203} |
| `processes` | {'int': 2203} |
| `pssFallbackProcesses` | {'int': 2203} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
