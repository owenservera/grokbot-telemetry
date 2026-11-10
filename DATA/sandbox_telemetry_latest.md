# sandbox_telemetry_parse — 2026-11-10 04:26:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=987850 lines=2191
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2182 |
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
| `chromeBrowserPssKb` | {'int': 2182} |
| `chromeGpuPssKb` | {'int': 2182} |
| `chromeOtherPssKb` | {'int': 2182} |
| `chromeProcesses` | {'int': 2182} |
| `chromeProfiles` | {'int': 2182} |
| `chromeRendererMaxPssKb` | {'int': 2182} |
| `chromeRendererPssKb` | {'int': 2182} |
| `chromeRenderers` | {'int': 2182} |
| `chromeTabs` | {'int': 2182} |
| `chromeTabsProbedProfiles` | {'int': 2182} |
| `chromeUtilityPssKb` | {'int': 2182} |
| `desktopPssKb` | {'int': 2182} |
| `hostPssKb` | {'int': 2182} |
| `kind` | {'str': 2182} |
| `memAvailableKb` | {'int': 2182} |
| `memTotalKb` | {'int': 2182} |
| `otherPssKb` | {'int': 2182} |
| `processes` | {'int': 2182} |
| `pssFallbackProcesses` | {'int': 2182} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
