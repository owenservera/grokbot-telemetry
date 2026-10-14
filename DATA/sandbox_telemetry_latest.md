# sandbox_telemetry_parse — 2026-10-14 17:04:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=391802 lines=871
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 866 |
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
| `chromeBrowserPssKb` | {'int': 866} |
| `chromeGpuPssKb` | {'int': 866} |
| `chromeOtherPssKb` | {'int': 866} |
| `chromeProcesses` | {'int': 866} |
| `chromeProfiles` | {'int': 866} |
| `chromeRendererMaxPssKb` | {'int': 866} |
| `chromeRendererPssKb` | {'int': 866} |
| `chromeRenderers` | {'int': 866} |
| `chromeTabs` | {'int': 866} |
| `chromeTabsProbedProfiles` | {'int': 866} |
| `chromeUtilityPssKb` | {'int': 866} |
| `desktopPssKb` | {'int': 866} |
| `hostPssKb` | {'int': 866} |
| `kind` | {'str': 866} |
| `memAvailableKb` | {'int': 866} |
| `memTotalKb` | {'int': 866} |
| `otherPssKb` | {'int': 866} |
| `processes` | {'int': 866} |
| `pssFallbackProcesses` | {'int': 866} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
