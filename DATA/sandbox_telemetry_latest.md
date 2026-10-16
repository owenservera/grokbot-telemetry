# sandbox_telemetry_parse — 2026-10-16 19:47:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=776479 lines=2902
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1922 |
| `memory_sample` | 971 |
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
| `chromeBrowserPssKb` | {'int': 971} |
| `chromeGpuPssKb` | {'int': 971} |
| `chromeOtherPssKb` | {'int': 971} |
| `chromeProcesses` | {'int': 971} |
| `chromeProfiles` | {'int': 971} |
| `chromeRendererMaxPssKb` | {'int': 971} |
| `chromeRendererPssKb` | {'int': 971} |
| `chromeRenderers` | {'int': 971} |
| `chromeTabs` | {'int': 971} |
| `chromeTabsProbedProfiles` | {'int': 971} |
| `chromeUtilityPssKb` | {'int': 971} |
| `desktopPssKb` | {'int': 971} |
| `hostPssKb` | {'int': 971} |
| `kind` | {'str': 971} |
| `memAvailableKb` | {'int': 971} |
| `memTotalKb` | {'int': 971} |
| `otherPssKb` | {'int': 971} |
| `processes` | {'int': 971} |
| `pssFallbackProcesses` | {'int': 971} |

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
| `cpuMillicores` | {'int': 1919} |
| `display` | {'int': 1922} |
| `kind` | {'str': 1922} |
| `processes` | {'int': 1922} |
| `pssKb` | {'int': 1922} |
| `rendererMaxPssKb` | {'int': 1922} |
| `renderers` | {'int': 1922} |
| `tabs` | {'int': 1921} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
