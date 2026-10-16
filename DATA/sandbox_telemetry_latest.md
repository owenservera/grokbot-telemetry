# sandbox_telemetry_parse — 2026-10-16 12:57:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=463423 lines=1732
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1142 |
| `memory_sample` | 581 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 581} |
| `chromeGpuPssKb` | {'int': 581} |
| `chromeOtherPssKb` | {'int': 581} |
| `chromeProcesses` | {'int': 581} |
| `chromeProfiles` | {'int': 581} |
| `chromeRendererMaxPssKb` | {'int': 581} |
| `chromeRendererPssKb` | {'int': 581} |
| `chromeRenderers` | {'int': 581} |
| `chromeTabs` | {'int': 581} |
| `chromeTabsProbedProfiles` | {'int': 581} |
| `chromeUtilityPssKb` | {'int': 581} |
| `desktopPssKb` | {'int': 581} |
| `hostPssKb` | {'int': 581} |
| `kind` | {'str': 581} |
| `memAvailableKb` | {'int': 581} |
| `memTotalKb` | {'int': 581} |
| `otherPssKb` | {'int': 581} |
| `processes` | {'int': 581} |
| `pssFallbackProcesses` | {'int': 581} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1139} |
| `display` | {'int': 1142} |
| `kind` | {'str': 1142} |
| `processes` | {'int': 1142} |
| `pssKb` | {'int': 1142} |
| `rendererMaxPssKb` | {'int': 1142} |
| `renderers` | {'int': 1142} |
| `tabs` | {'int': 1141} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
