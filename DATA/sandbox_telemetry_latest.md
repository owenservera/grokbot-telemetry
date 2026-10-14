# sandbox_telemetry_parse — 2026-10-15 00:35:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=569890 lines=1265
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1260 |
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
| `chromeBrowserPssKb` | {'int': 1260} |
| `chromeGpuPssKb` | {'int': 1260} |
| `chromeOtherPssKb` | {'int': 1260} |
| `chromeProcesses` | {'int': 1260} |
| `chromeProfiles` | {'int': 1260} |
| `chromeRendererMaxPssKb` | {'int': 1260} |
| `chromeRendererPssKb` | {'int': 1260} |
| `chromeRenderers` | {'int': 1260} |
| `chromeTabs` | {'int': 1260} |
| `chromeTabsProbedProfiles` | {'int': 1260} |
| `chromeUtilityPssKb` | {'int': 1260} |
| `desktopPssKb` | {'int': 1260} |
| `hostPssKb` | {'int': 1260} |
| `kind` | {'str': 1260} |
| `memAvailableKb` | {'int': 1260} |
| `memTotalKb` | {'int': 1260} |
| `otherPssKb` | {'int': 1260} |
| `processes` | {'int': 1260} |
| `pssFallbackProcesses` | {'int': 1260} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
