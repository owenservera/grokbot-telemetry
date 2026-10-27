# sandbox_telemetry_parse — 2026-10-27 01:08:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=239565 lines=533
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 528 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 528} |
| `chromeGpuPssKb` | {'int': 528} |
| `chromeOtherPssKb` | {'int': 528} |
| `chromeProcesses` | {'int': 528} |
| `chromeProfiles` | {'int': 528} |
| `chromeRendererMaxPssKb` | {'int': 528} |
| `chromeRendererPssKb` | {'int': 528} |
| `chromeRenderers` | {'int': 528} |
| `chromeTabs` | {'int': 528} |
| `chromeTabsProbedProfiles` | {'int': 528} |
| `chromeUtilityPssKb` | {'int': 528} |
| `desktopPssKb` | {'int': 528} |
| `hostPssKb` | {'int': 528} |
| `kind` | {'str': 528} |
| `memAvailableKb` | {'int': 528} |
| `memTotalKb` | {'int': 528} |
| `otherPssKb` | {'int': 528} |
| `processes` | {'int': 528} |
| `pssFallbackProcesses` | {'int': 528} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
