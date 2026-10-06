# sandbox_telemetry_parse — 2026-10-06 14:54:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=434306 lines=957
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 952 |
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
| `chromeBrowserPssKb` | {'int': 952} |
| `chromeGpuPssKb` | {'int': 952} |
| `chromeOtherPssKb` | {'int': 952} |
| `chromeProcesses` | {'int': 952} |
| `chromeProfiles` | {'int': 952} |
| `chromeRendererMaxPssKb` | {'int': 952} |
| `chromeRendererPssKb` | {'int': 952} |
| `chromeRenderers` | {'int': 952} |
| `chromeTabs` | {'int': 952} |
| `chromeTabsProbedProfiles` | {'int': 952} |
| `chromeUtilityPssKb` | {'int': 952} |
| `desktopPssKb` | {'int': 952} |
| `hostPssKb` | {'int': 952} |
| `kind` | {'str': 952} |
| `memAvailableKb` | {'int': 952} |
| `memTotalKb` | {'int': 952} |
| `otherPssKb` | {'int': 952} |
| `processes` | {'int': 952} |
| `pssFallbackProcesses` | {'int': 952} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
