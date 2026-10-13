# sandbox_telemetry_parse — 2026-10-13 22:47:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1269922 lines=3347
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2439 |
| `chrome_profile_sample` | 900 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2439} |
| `chromeGpuPssKb` | {'int': 2439} |
| `chromeOtherPssKb` | {'int': 2439} |
| `chromeProcesses` | {'int': 2439} |
| `chromeProfiles` | {'int': 2439} |
| `chromeRendererMaxPssKb` | {'int': 2439} |
| `chromeRendererPssKb` | {'int': 2439} |
| `chromeRenderers` | {'int': 2439} |
| `chromeTabs` | {'int': 2439} |
| `chromeTabsProbedProfiles` | {'int': 2439} |
| `chromeUtilityPssKb` | {'int': 2439} |
| `desktopPssKb` | {'int': 2439} |
| `hostPssKb` | {'int': 2439} |
| `kind` | {'str': 2439} |
| `memAvailableKb` | {'int': 2439} |
| `memTotalKb` | {'int': 2439} |
| `otherPssKb` | {'int': 2439} |
| `processes` | {'int': 2439} |
| `pssFallbackProcesses` | {'int': 2439} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 899} |
| `display` | {'int': 900} |
| `kind` | {'str': 900} |
| `processes` | {'int': 900} |
| `pssKb` | {'int': 900} |
| `rendererMaxPssKb` | {'int': 900} |
| `renderers` | {'int': 900} |
| `tabs` | {'int': 900} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
