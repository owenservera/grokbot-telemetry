# sandbox_telemetry_parse — 2026-11-12 12:37:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2131353 lines=4718
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4709 |
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
| `chromeBrowserPssKb` | {'int': 4709} |
| `chromeGpuPssKb` | {'int': 4709} |
| `chromeOtherPssKb` | {'int': 4709} |
| `chromeProcesses` | {'int': 4709} |
| `chromeProfiles` | {'int': 4709} |
| `chromeRendererMaxPssKb` | {'int': 4709} |
| `chromeRendererPssKb` | {'int': 4709} |
| `chromeRenderers` | {'int': 4709} |
| `chromeTabs` | {'int': 4709} |
| `chromeTabsProbedProfiles` | {'int': 4709} |
| `chromeUtilityPssKb` | {'int': 4709} |
| `desktopPssKb` | {'int': 4709} |
| `hostPssKb` | {'int': 4709} |
| `kind` | {'str': 4709} |
| `memAvailableKb` | {'int': 4709} |
| `memTotalKb` | {'int': 4709} |
| `otherPssKb` | {'int': 4709} |
| `processes` | {'int': 4709} |
| `pssFallbackProcesses` | {'int': 4709} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
