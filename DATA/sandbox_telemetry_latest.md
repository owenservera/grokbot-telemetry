# sandbox_telemetry_parse — 2026-10-26 19:06:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=88263 lines=199
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 194 |
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
| `chromeBrowserPssKb` | {'int': 194} |
| `chromeGpuPssKb` | {'int': 194} |
| `chromeOtherPssKb` | {'int': 194} |
| `chromeProcesses` | {'int': 194} |
| `chromeProfiles` | {'int': 194} |
| `chromeRendererMaxPssKb` | {'int': 194} |
| `chromeRendererPssKb` | {'int': 194} |
| `chromeRenderers` | {'int': 194} |
| `chromeTabs` | {'int': 194} |
| `chromeTabsProbedProfiles` | {'int': 194} |
| `chromeUtilityPssKb` | {'int': 194} |
| `desktopPssKb` | {'int': 194} |
| `hostPssKb` | {'int': 194} |
| `kind` | {'str': 194} |
| `memAvailableKb` | {'int': 194} |
| `memTotalKb` | {'int': 194} |
| `otherPssKb` | {'int': 194} |
| `processes` | {'int': 194} |
| `pssFallbackProcesses` | {'int': 194} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
