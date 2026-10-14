# sandbox_telemetry_parse — 2026-10-14 16:14:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=374174 lines=832
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 827 |
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
| `chromeBrowserPssKb` | {'int': 827} |
| `chromeGpuPssKb` | {'int': 827} |
| `chromeOtherPssKb` | {'int': 827} |
| `chromeProcesses` | {'int': 827} |
| `chromeProfiles` | {'int': 827} |
| `chromeRendererMaxPssKb` | {'int': 827} |
| `chromeRendererPssKb` | {'int': 827} |
| `chromeRenderers` | {'int': 827} |
| `chromeTabs` | {'int': 827} |
| `chromeTabsProbedProfiles` | {'int': 827} |
| `chromeUtilityPssKb` | {'int': 827} |
| `desktopPssKb` | {'int': 827} |
| `hostPssKb` | {'int': 827} |
| `kind` | {'str': 827} |
| `memAvailableKb` | {'int': 827} |
| `memTotalKb` | {'int': 827} |
| `otherPssKb` | {'int': 827} |
| `processes` | {'int': 827} |
| `pssFallbackProcesses` | {'int': 827} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
