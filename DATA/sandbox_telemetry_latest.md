# sandbox_telemetry_parse — 2026-10-16 14:12:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=521222 lines=1948
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1286 |
| `memory_sample` | 653 |
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
| `chromeBrowserPssKb` | {'int': 653} |
| `chromeGpuPssKb` | {'int': 653} |
| `chromeOtherPssKb` | {'int': 653} |
| `chromeProcesses` | {'int': 653} |
| `chromeProfiles` | {'int': 653} |
| `chromeRendererMaxPssKb` | {'int': 653} |
| `chromeRendererPssKb` | {'int': 653} |
| `chromeRenderers` | {'int': 653} |
| `chromeTabs` | {'int': 653} |
| `chromeTabsProbedProfiles` | {'int': 653} |
| `chromeUtilityPssKb` | {'int': 653} |
| `desktopPssKb` | {'int': 653} |
| `hostPssKb` | {'int': 653} |
| `kind` | {'str': 653} |
| `memAvailableKb` | {'int': 653} |
| `memTotalKb` | {'int': 653} |
| `otherPssKb` | {'int': 653} |
| `processes` | {'int': 653} |
| `pssFallbackProcesses` | {'int': 653} |

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
| `cpuMillicores` | {'int': 1283} |
| `display` | {'int': 1286} |
| `kind` | {'str': 1286} |
| `processes` | {'int': 1286} |
| `pssKb` | {'int': 1286} |
| `rendererMaxPssKb` | {'int': 1286} |
| `renderers` | {'int': 1286} |
| `tabs` | {'int': 1285} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
