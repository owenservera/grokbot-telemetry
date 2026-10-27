# sandbox_telemetry_parse — 2026-10-27 01:17:26 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=243189 lines=541
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 536 |
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
| `chromeBrowserPssKb` | {'int': 536} |
| `chromeGpuPssKb` | {'int': 536} |
| `chromeOtherPssKb` | {'int': 536} |
| `chromeProcesses` | {'int': 536} |
| `chromeProfiles` | {'int': 536} |
| `chromeRendererMaxPssKb` | {'int': 536} |
| `chromeRendererPssKb` | {'int': 536} |
| `chromeRenderers` | {'int': 536} |
| `chromeTabs` | {'int': 536} |
| `chromeTabsProbedProfiles` | {'int': 536} |
| `chromeUtilityPssKb` | {'int': 536} |
| `desktopPssKb` | {'int': 536} |
| `hostPssKb` | {'int': 536} |
| `kind` | {'str': 536} |
| `memAvailableKb` | {'int': 536} |
| `memTotalKb` | {'int': 536} |
| `otherPssKb` | {'int': 536} |
| `processes` | {'int': 536} |
| `pssFallbackProcesses` | {'int': 536} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
