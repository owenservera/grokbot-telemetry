# sandbox_telemetry_parse — 2026-10-06 02:30:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=98234 lines=220
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 215 |
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
| `chromeBrowserPssKb` | {'int': 215} |
| `chromeGpuPssKb` | {'int': 215} |
| `chromeOtherPssKb` | {'int': 215} |
| `chromeProcesses` | {'int': 215} |
| `chromeProfiles` | {'int': 215} |
| `chromeRendererMaxPssKb` | {'int': 215} |
| `chromeRendererPssKb` | {'int': 215} |
| `chromeRenderers` | {'int': 215} |
| `chromeTabs` | {'int': 215} |
| `chromeTabsProbedProfiles` | {'int': 215} |
| `chromeUtilityPssKb` | {'int': 215} |
| `desktopPssKb` | {'int': 215} |
| `hostPssKb` | {'int': 215} |
| `kind` | {'str': 215} |
| `memAvailableKb` | {'int': 215} |
| `memTotalKb` | {'int': 215} |
| `otherPssKb` | {'int': 215} |
| `processes` | {'int': 215} |
| `pssFallbackProcesses` | {'int': 215} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
