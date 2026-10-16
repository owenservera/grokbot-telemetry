# sandbox_telemetry_parse — 2026-10-16 10:26:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=358340 lines=1339
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 880 |
| `memory_sample` | 450 |
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
| `chromeBrowserPssKb` | {'int': 450} |
| `chromeGpuPssKb` | {'int': 450} |
| `chromeOtherPssKb` | {'int': 450} |
| `chromeProcesses` | {'int': 450} |
| `chromeProfiles` | {'int': 450} |
| `chromeRendererMaxPssKb` | {'int': 450} |
| `chromeRendererPssKb` | {'int': 450} |
| `chromeRenderers` | {'int': 450} |
| `chromeTabs` | {'int': 450} |
| `chromeTabsProbedProfiles` | {'int': 450} |
| `chromeUtilityPssKb` | {'int': 450} |
| `desktopPssKb` | {'int': 450} |
| `hostPssKb` | {'int': 450} |
| `kind` | {'str': 450} |
| `memAvailableKb` | {'int': 450} |
| `memTotalKb` | {'int': 450} |
| `otherPssKb` | {'int': 450} |
| `processes` | {'int': 450} |
| `pssFallbackProcesses` | {'int': 450} |

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
| `cpuMillicores` | {'int': 877} |
| `display` | {'int': 880} |
| `kind` | {'str': 880} |
| `processes` | {'int': 880} |
| `pssKb` | {'int': 880} |
| `rendererMaxPssKb` | {'int': 880} |
| `renderers` | {'int': 880} |
| `tabs` | {'int': 879} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
