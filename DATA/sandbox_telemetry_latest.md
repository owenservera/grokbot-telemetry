# sandbox_telemetry_parse — 2026-10-14 06:23:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=137778 lines=309
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 304 |
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
| `chromeBrowserPssKb` | {'int': 304} |
| `chromeGpuPssKb` | {'int': 304} |
| `chromeOtherPssKb` | {'int': 304} |
| `chromeProcesses` | {'int': 304} |
| `chromeProfiles` | {'int': 304} |
| `chromeRendererMaxPssKb` | {'int': 304} |
| `chromeRendererPssKb` | {'int': 304} |
| `chromeRenderers` | {'int': 304} |
| `chromeTabs` | {'int': 304} |
| `chromeTabsProbedProfiles` | {'int': 304} |
| `chromeUtilityPssKb` | {'int': 304} |
| `desktopPssKb` | {'int': 304} |
| `hostPssKb` | {'int': 304} |
| `kind` | {'str': 304} |
| `memAvailableKb` | {'int': 304} |
| `memTotalKb` | {'int': 304} |
| `otherPssKb` | {'int': 304} |
| `processes` | {'int': 304} |
| `pssFallbackProcesses` | {'int': 304} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
