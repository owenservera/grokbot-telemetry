# sandbox_telemetry_parse — 2026-10-15 00:14:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=561754 lines=1247
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1242 |
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
| `chromeBrowserPssKb` | {'int': 1242} |
| `chromeGpuPssKb` | {'int': 1242} |
| `chromeOtherPssKb` | {'int': 1242} |
| `chromeProcesses` | {'int': 1242} |
| `chromeProfiles` | {'int': 1242} |
| `chromeRendererMaxPssKb` | {'int': 1242} |
| `chromeRendererPssKb` | {'int': 1242} |
| `chromeRenderers` | {'int': 1242} |
| `chromeTabs` | {'int': 1242} |
| `chromeTabsProbedProfiles` | {'int': 1242} |
| `chromeUtilityPssKb` | {'int': 1242} |
| `desktopPssKb` | {'int': 1242} |
| `hostPssKb` | {'int': 1242} |
| `kind` | {'str': 1242} |
| `memAvailableKb` | {'int': 1242} |
| `memTotalKb` | {'int': 1242} |
| `otherPssKb` | {'int': 1242} |
| `processes` | {'int': 1242} |
| `pssFallbackProcesses` | {'int': 1242} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
