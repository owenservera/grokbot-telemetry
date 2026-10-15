# sandbox_telemetry_parse — 2026-10-16 00:36:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1132178 lines=2509
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2504 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2504} |
| `chromeGpuPssKb` | {'int': 2504} |
| `chromeOtherPssKb` | {'int': 2504} |
| `chromeProcesses` | {'int': 2504} |
| `chromeProfiles` | {'int': 2504} |
| `chromeRendererMaxPssKb` | {'int': 2504} |
| `chromeRendererPssKb` | {'int': 2504} |
| `chromeRenderers` | {'int': 2504} |
| `chromeTabs` | {'int': 2504} |
| `chromeTabsProbedProfiles` | {'int': 2504} |
| `chromeUtilityPssKb` | {'int': 2504} |
| `desktopPssKb` | {'int': 2504} |
| `hostPssKb` | {'int': 2504} |
| `kind` | {'str': 2504} |
| `memAvailableKb` | {'int': 2504} |
| `memTotalKb` | {'int': 2504} |
| `otherPssKb` | {'int': 2504} |
| `processes` | {'int': 2504} |
| `pssFallbackProcesses` | {'int': 2504} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
