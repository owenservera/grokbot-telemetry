# sandbox_telemetry_parse — 2026-10-26 21:10:16 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=140811 lines=315
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 310 |
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
| `chromeBrowserPssKb` | {'int': 310} |
| `chromeGpuPssKb` | {'int': 310} |
| `chromeOtherPssKb` | {'int': 310} |
| `chromeProcesses` | {'int': 310} |
| `chromeProfiles` | {'int': 310} |
| `chromeRendererMaxPssKb` | {'int': 310} |
| `chromeRendererPssKb` | {'int': 310} |
| `chromeRenderers` | {'int': 310} |
| `chromeTabs` | {'int': 310} |
| `chromeTabsProbedProfiles` | {'int': 310} |
| `chromeUtilityPssKb` | {'int': 310} |
| `desktopPssKb` | {'int': 310} |
| `hostPssKb` | {'int': 310} |
| `kind` | {'str': 310} |
| `memAvailableKb` | {'int': 310} |
| `memTotalKb` | {'int': 310} |
| `otherPssKb` | {'int': 310} |
| `processes` | {'int': 310} |
| `pssFallbackProcesses` | {'int': 310} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
