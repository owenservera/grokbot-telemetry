# sandbox_telemetry_parse — 2026-10-06 02:14:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=91394 lines=205
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 200 |
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
| `chromeBrowserPssKb` | {'int': 200} |
| `chromeGpuPssKb` | {'int': 200} |
| `chromeOtherPssKb` | {'int': 200} |
| `chromeProcesses` | {'int': 200} |
| `chromeProfiles` | {'int': 200} |
| `chromeRendererMaxPssKb` | {'int': 200} |
| `chromeRendererPssKb` | {'int': 200} |
| `chromeRenderers` | {'int': 200} |
| `chromeTabs` | {'int': 200} |
| `chromeTabsProbedProfiles` | {'int': 200} |
| `chromeUtilityPssKb` | {'int': 200} |
| `desktopPssKb` | {'int': 200} |
| `hostPssKb` | {'int': 200} |
| `kind` | {'str': 200} |
| `memAvailableKb` | {'int': 200} |
| `memTotalKb` | {'int': 200} |
| `otherPssKb` | {'int': 200} |
| `processes` | {'int': 200} |
| `pssFallbackProcesses` | {'int': 200} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
